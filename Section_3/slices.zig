const std = @import("std");

const TestErrorSet = error{InvalidInput};

pub fn main() !void {
    var myArray: [5]i32 = .{ 1, 2, 3, 4, 5 };

    const mySlice: []const i32 = myArray[1..4];

    for (mySlice, 0..) |value, index| {
        std.debug.print("Value {} and index {}\n", .{ value, index });
    }
    const myNameArr: []const u8 = &.{ 'J', 'O', 'O', 'N' };
    _ = try nameSlice(myNameArr);
}

fn nameSlice(arr: []const u8) bool {
    if (arr.len < 1) return false;

    const myNameSlice = arr[1..2];
    for (myNameSlice, 0..) |value, index| {
        std.debug.print("{c}{}\n", .{ value, index });
    }
    return true;
}

test "Name slicing test" {
    const myNameArr: []const u8 = &.{ 'J', 'O', 'O', 'N' };
    try std.testing.expect(nameSlice(myNameArr));
}
