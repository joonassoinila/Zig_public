const std = @import("std");

inline fn square(x: i32) i32 {
    return x * x;
}

pub fn main() !void {
    const result = square(5);
    std.debug.print("Square is: {d}\n", .{result});
}
