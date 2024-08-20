const std = @import("std");

pub fn main() !void {
    var myArray = [5]i32{ 1, 2, 3, 4, 5 };
    std.debug.print("Array: {any}\n", .{myArray});

    std.debug.print("Third element{d}\n", .{myArray[2]});
    myArray[2] = 500;
    std.debug.print("Changed values{any}\n", .{myArray});
    try printArrValues(&myArray);
}

fn printArrValues(arr: []i32) !void {
    for (arr) |x| {
        std.debug.print(":) {d}\n", .{x});
    }
}
