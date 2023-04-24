module Jekyll
    class LastModifiedTag < Liquid::Tag
        def render(context)
            current_document = context.registers[:page]
            site_source = context.registers[:site].config['source']
            file_path = "#{site_source}/#{current_document['path']}"
            if File.exist?(file_path)
                last_modified = File.mtime(file_path)
                return last_modified.strftime(context.registers[:site].config["last_edit_time_format"])
            else
                return ""
            end
        end
    end
end

Liquid::Template.register_tag('last_modified', Jekyll::LastModifiedTag)
