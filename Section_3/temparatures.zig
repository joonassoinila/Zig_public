const std = @import("std");

pub fn main() !void {
    const weekTemperatures: [7]i32 = .{ 42, 33, 67, 77, 87, 75, 56 };
    const avgTemp = try calcAvg(&weekTemperatures);
    const coldestDay = try calcColdestDay(&weekTemperatures);
    const hottestDay = try calcHottestDay(&weekTemperatures);
    const weekdEndSlice = try getOnlyWeekEnd(&weekTemperatures);
    std.debug.print("AvgTemp {d:.1}\n", .{avgTemp});
    std.debug.print("Coldest {d}\n", .{coldestDay});
    std.debug.print("Hottest {d}\n", .{hottestDay});
    std.debug.print("Weekend {any}\n", .{weekdEndSlice});
}

fn calcAvg(arr: []const i32) !f16 {
    var x: f16 = 0;
    for (arr) |value| {
        x += @floatFromInt(value);
    }
    const arrLength: f16 = @floatFromInt(arr.len);
    const avg: f16 = x / arrLength;
    return avg;
}

fn calcColdestDay(arr: []const i32) !i32 {
    var coldestDay: i32 = arr[0];
    for (arr) |value| {
        if (value < coldestDay) {
            coldestDay = value;
        }
    }
    return coldestDay;
}

fn calcHottestDay(arr: []const i32) !i32 {
    var hottestDay: i32 = arr[0];
    for (arr) |value| {
        if (value > hottestDay) {
            hottestDay = value;
        }
    }
    return hottestDay;
}

fn getOnlyWeekEnd(arr: []const i32) ![]const i32 {
    const weekEndSlice: []const i32 = arr[5..];
    return weekEndSlice;
}
