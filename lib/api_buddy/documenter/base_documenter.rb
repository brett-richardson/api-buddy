module ApiBuddy
  module Documenter
    class BaseDocumenter < SimpleDelegator
      def to_md
        ''
      end

      private

      def lines(*args)
        args.join "\n"
      end

      def blank_line
        ''
      end

      def indent(amount)
        "  " * amount
      end

      def horizontal_seperator
        "\n\n- - - - -\n\n"
      end
    end
  end
end
