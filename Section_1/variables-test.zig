const std = @import("std");

pub fn main() !void {
    const maxIterations: i32 = 10;
    var counter: i32 = 0;

    while (counter <= maxIterations) {
        std.debug.print("Counter {d}\n", .{counter});
        counter += 1;
    }
}
