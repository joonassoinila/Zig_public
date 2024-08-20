const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    const name: []const u8 = "Joonas";
    const initialLetter: u8 = name[0];

    try stdout.print("My name is {s}, which starts with {c}", .{ name, initialLetter });
}

test "if statement" {
    const a = true;
    var x: i8 = 0;
    if (a) {
        x += 1;
    } else {
        x += 2;
    }
    try std.testing.expect(x == 2);
}
