const std = @import("std");

pub fn main() !void {
    const nameArr: []const u8 = &.{ 'J', 'o', 'o', 'n', 'a', 's' };
    try loopArr(nameArr);
}

fn loopArr(arr: []const u8) !void {
    for (arr) |x| {
        std.debug.print("{c}", .{x});
    }
    std.debug.print("\n", .{});
}
