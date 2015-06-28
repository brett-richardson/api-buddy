module DocumentHelpers
  def expect_to_equal_file_contents(file_path, string)
    expected = File.open(file_path).to_a.join.split "\n"
    actual   = subject.split "\n"

    actual.each_with_index do |line, i|
      begin
        expect(line).to eq expected[i]
      rescue Exception => e
        range = (i - 3)..(i + 3)
        puts "### expected: ###\n#{expected[range]}\n"
        puts "### actual: ###\n#{actual[range]}\n"
        raise e
      end
    end

    expect(actual).to eq expected
  end
end
