const std = @import("std");

pub fn main() !void {
    if (1 > 2) {
        std.debug.print("True", .{});
    } else {
        std.debug.print("False", .{});
    }
}
