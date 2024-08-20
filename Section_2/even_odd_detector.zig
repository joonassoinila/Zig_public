const std = @import("std");

pub fn main() !void {
    const loopNumber: i32 = 15;
    _ = evenOdd(loopNumber) catch {};
}

fn evenOdd(loopUpTo: i32) !void {
    var counter: i32 = 1;
    while (counter <= loopUpTo) {
        if (@mod(counter, 2) == 0) {
            std.debug.print("Number {d} is even\n", .{counter});
        } else {
            std.debug.print("Number {d} is odd\n", .{counter});
        }
        counter += 1;
    }
    std.debug.print("Exited loop with max of {d}\n", .{counter});
}
