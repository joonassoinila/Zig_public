const std = @import("std");

pub fn main() !void {
    const PetKind = enum { Dog, Cat, Fish };
    const pet_tuple = .{
        "Name",
        PetKind.Cat,
    };
    const pet_kind: []const u8 = @tagName(pet_tuple[1]);
    const pet_name: []const u8 = pet_tuple[0];

    std.debug.print("Name {s}, Kind of pet {s}\n", .{ pet_name, pet_kind });
}
