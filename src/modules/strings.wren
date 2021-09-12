#module=essentials
class Strings {
    static upcase(s) {
        return s.bytes.map { |x|
            if ((LOWERCASE_A..LOWERCASE_Z).contains(x)) x = x - 32
            return String.fromByte(x)
        }.join("")
    }

    static downcase(s) {
        return s.bytes.map { |x|
            if ((UPPERCASE_A..UPPERCASE_Z).contains(x)) x = x + 32
            return String.fromByte(x)
        }.join("")
    }
    static capitalize(s) {
        if (s.isEmpty) return ""
        if (s.count == 1) return Strings.upcase(s)
        return Strings.upcase(s[0]) + s[1..-1]
    }
    static titlecase(s) {
        return s.split(" ").map {|w| capitalize(w) }.join(" ")
    }

    /************************************************************************
     * Adapting the Tcl `string match` command
     *
     * Special characters that can appear in a pattern:
        *
            Matches any sequence of characters in string, including a null
            string.

        ?
            Matches any single character in string.

        [chars]
            Matches any character in the set given by chars. If a sequence
            of the form x-y appears in chars, then any character between x
            and y, inclusive, will match. Ranges can be forward ([a-z]) or
            backward ([z-a]).

            In somewhat odd behaviour, patterns ending with unclosed
            bracket expressions will match successfully:
                Strings.globMatch("a", "[a]")   // expect: true
                Strings.globMatch("a", "[a")    // expect: true

            Additionally, "]" can appear inside a bracket expression
            only as the end of a range.

            Empty bracket expressions are always invalid.

        \\x
            Matches the single character x. This provides a way of
            avoiding the special interpretation of the characters *?[]\\ in
            pattern. In a wren string, the backslash itself must be escaped:
                Strings.globMatch("a*b", "a\\*b")   // expect: true

            Use raw strings to reduce the number of backslashes.
     *
     */
    static globMatch(string, pattern) {
        return globMatch_(
            string,
            string.count,
            pattern,
            pattern.count
        )
    }

    foreign static globMatch_(string, strLen, pattern, ptnLen)
}

var LOWERCASE_A = "a".bytes[0]
var LOWERCASE_Z = "z".bytes[0]
var UPPERCASE_A = "A".bytes[0]
var UPPERCASE_Z = "Z".bytes[0]
