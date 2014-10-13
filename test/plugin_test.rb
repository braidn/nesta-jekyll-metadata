require 'minitest/autorun'
require 'fileutils'
require 'tilt'
require 'nesta/models'

require_relative '../lib/nesta/plugin/jekyll/metadata/init'

describe Nesta::FileModel do

  before do
    build_jekyll_data
    build_normal_data
  end

  after do
    FileUtils.rm(fixture) if File.exists?(fixture)
    FileUtils.rm(fixture('jekyll')) if File.exists?(fixture('jekyll'))
  end

  describe 'with Jekyll metadata' do
    subject { Nesta::Page.new(fixture('jekyll')) }

    it 'will parse metadata ignoring --(dashes)' do
      subject.title.must_include 'take one down'
      subject.summary.must_include 'oh yeah'
    end
  end

  describe 'with Normal metadata' do
    subject { Nesta::Page.new(fixture) }

    it 'will parse metadata if there are no dashes' do
      subject.title.must_include 'take one down'
      subject.summary.must_include 'oh yeah'
    end
  end

  def build_jekyll_data
    generate_fixture(fixture('jekyll')) do
      <<-DATA
        -------
        link text: take one down
        date: Monday, October 13, 2014
        summary: oh yeah
        -------

        more to come...
      DATA
    end
  end

  def build_normal_data
    generate_fixture(fixture) do
      <<-DATA
        link text: take one down
        date: Monday, October 13, 2014
        summary: oh yeah

        more to come...
      DATA
    end
  end

  def fixture(type='normal')
    File.join(File.dirname(__FILE__), "test-#{type}.mdown")
  end

  def generate_fixture(filename)
    File.open(filename, 'w') { |f| f.write yield }
  end
end
