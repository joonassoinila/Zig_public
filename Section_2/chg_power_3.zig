const std = @import("std");

pub fn main() !void {
    var x: usize = 1;
    var counter: i32 = 0;
    while (x < 30 and counter < 10) {
        x *= 3;
        counter += 1;
        if (x >= 30 and x % 3 == 0) {
            std.debug.print("Found match {d}\n", .{x});
            break;
        } else {
            std.debug.print("Not there yet {d}\n", .{x});
        }
    }
}
