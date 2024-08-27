const std = @import("std");
const Birthday = @import("proj_birthday.zig").Birthday;

pub fn main() !void {
    const bday = Birthday{ .age = 15, .name = "Joonas" };
    const bday2 = Birthday{ .age = 3, .name = "Mauno" };

    bday.celebrate();
    bday2.celebrate();
}
