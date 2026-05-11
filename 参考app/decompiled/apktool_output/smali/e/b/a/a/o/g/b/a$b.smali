.class public final enum Le/b/a/a/o/g/b/a$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/a/a/o/g/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/b/a/a/o/g/b/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Le/b/a/a/o/g/b/a$b;

.field public static final enum f:Le/b/a/a/o/g/b/a$b;

.field public static final enum g:Le/b/a/a/o/g/b/a$b;

.field public static final synthetic h:[Le/b/a/a/o/g/b/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Le/b/a/a/o/g/b/a$b;

    const-string v1, "TRIANGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/b/a/a/o/g/b/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/b/a/a/o/g/b/a$b;->e:Le/b/a/a/o/g/b/a$b;

    new-instance v1, Le/b/a/a/o/g/b/a$b;

    const-string v3, "RECTANGLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/b/a/a/o/g/b/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/b/a/a/o/g/b/a$b;->f:Le/b/a/a/o/g/b/a$b;

    new-instance v3, Le/b/a/a/o/g/b/a$b;

    const-string v5, "FULL_RECTANGLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/b/a/a/o/g/b/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/b/a/a/o/g/b/a$b;->g:Le/b/a/a/o/g/b/a$b;

    const/4 v5, 0x3

    new-array v5, v5, [Le/b/a/a/o/g/b/a$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Le/b/a/a/o/g/b/a$b;->h:[Le/b/a/a/o/g/b/a$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/b/a/a/o/g/b/a$b;
    .locals 1

    const-class v0, Le/b/a/a/o/g/b/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/b/a/a/o/g/b/a$b;

    return-object p0
.end method

.method public static values()[Le/b/a/a/o/g/b/a$b;
    .locals 1

    sget-object v0, Le/b/a/a/o/g/b/a$b;->h:[Le/b/a/a/o/g/b/a$b;

    invoke-virtual {v0}, [Le/b/a/a/o/g/b/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/b/a/a/o/g/b/a$b;

    return-object v0
.end method
