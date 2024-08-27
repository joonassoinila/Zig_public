const std = @import("std");
const test_allocator = std.testing.allocator;
const allocat = std.heap.page_allocator;

inline fn printEven(slice: []const i32) !void {
    var list = std.ArrayList(i32).init(allocat);
    list.deinit();
    for (slice) |x| {
        if (@rem(x, 2) == 0) {
            std.debug.print("Number is even: {d}\n", .{x});
            try list.append(x);
        }
    }
    std.debug.print("All elements in list: {any}\n", .{list});
}

pub fn main() !void {
    const numbers = [16]i32{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16 };
    const numberSlice = numbers[0..10];
    try printEven(numberSlice);
}
