const std = @import("std");

pub fn main() !void {
    const stringValue: []const u8 = "Secrets";
    const result: bool = try myFunc(stringValue);
    std.debug.print("Result is {}\n", .{result});
}

pub fn myFunc(stringValue: []const u8) !bool {
    //const firstChar: u8 = stringValue[0];
    return std.ascii.isUpper(stringValue[0]);
}

test "My func returns true on value starting with s" {
    const stringValue: []const u8 = "Secrets";
    const result = try myFunc(stringValue);
    try std.testing.expect(result == false);
}
