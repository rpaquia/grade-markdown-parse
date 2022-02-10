FILE=MarkdownParse.java
git clone $1
cp GradingTests.java markdown-parse/
cp -r lib markdown-parse/
cd markdown-parse

if [ ! -f "$FILE"] ; then
    echo "$FILE not found."
    exit 1
fi

javac -cp lib/*:. GradingTests.java MarkdownParse.java
java -cp lib/*:. org.junit.runner.JUnitCore GradingTests