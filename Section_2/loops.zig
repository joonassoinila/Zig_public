const std = @import("std");

pub fn main() !void {
    var x: i32 = 10;
    while (x > 5) {
        x -= 1;
        std.debug.print("X: {d}\n", .{x});
        if (x <= 6) {
            break;
        } else if (x == 7) {
            continue;
        }
    }
}
