module Jekyll
    class PersonOutputTag < Liquid::Tag
        def initialize(tag_name, data, tokens)
            super
            @data = data
        end

        def render(context)
            data = context[@data]

            if data['github'] and data['github'] != ""
                output = "<a href=\"https://github.com/#{data['github']}\" target=\"_blank\" title=\"GitHub Profile\" ><nobr>#{data['firstname']} #{data['lastname']}</nobr></a>"
            else
                output = "<nobr>#{data['firstname']} #{data['lastname']}</nobr>"
            end
            output
        end
    end
end

Liquid::Template.register_tag('person_output', Jekyll::PersonOutputTag)
