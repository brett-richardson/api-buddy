module ApiBuddy
  module Documenter
    class BaseDocumenter < SimpleDelegator
      def to_md
        ''
      end

      private

      def lines(*args)
        args.join newline
      end

      def newline
        "\n"
      end

      def indent(amount)
        "  " * amount
      end
    end
  end
end
