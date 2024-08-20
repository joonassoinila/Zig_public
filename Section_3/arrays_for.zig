const std = @import("std");

pub fn main() !void {
    const myArray: []const i32 = &.{ 1, 2, 3, 4, 5 };

    for (myArray, 0..) |value, index| {
        std.debug.print("Value {} at index {}\n", .{ value, index });
    }
    const charArray: []const u8 = &.{ 'H', 'E', 'L', 'L', 'O' };
    try loopCharArr(charArray);
}

fn loopCharArr(arr: []const u8) !void {
    for (arr, 0..) |x, index| {
        std.debug.print("{c} {}\n", .{ x, index });
    }
}
