const std = @import("std");
const Pet = @import("chg_pet.zig").Pet;
const PetType = @import("chg_pet.zig").PetType;

pub fn main() !void {
    const fishie = Pet{ .age = 10, .name = "Fishies", .type = PetType.fish };
    const catto = Pet{ .age = 15, .name = "Clawsies", .type = PetType.cat };

    const catAge: u32 = try catto.getAge();
    std.debug.print("CatAge {d}\n", .{catAge});
    const fishAge: u32 = try fishie.getAge();
    std.debug.print("CatAge {d}\n", .{fishAge});
    try fishie.printInfo();
    try catto.printInfo();
}
