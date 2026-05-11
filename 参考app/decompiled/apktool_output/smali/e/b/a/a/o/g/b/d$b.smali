.class public final enum Le/b/a/a/o/g/b/d$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/a/a/o/g/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/b/a/a/o/g/b/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Le/b/a/a/o/g/b/d$b;

.field public static final enum f:Le/b/a/a/o/g/b/d$b;

.field public static final enum g:Le/b/a/a/o/g/b/d$b;

.field public static final enum h:Le/b/a/a/o/g/b/d$b;

.field public static final synthetic i:[Le/b/a/a/o/g/b/d$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Le/b/a/a/o/g/b/d$b;

    const-string v1, "TEXTURE_2D"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/b/a/a/o/g/b/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/b/a/a/o/g/b/d$b;->e:Le/b/a/a/o/g/b/d$b;

    new-instance v1, Le/b/a/a/o/g/b/d$b;

    const-string v3, "TEXTURE_EXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/b/a/a/o/g/b/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/b/a/a/o/g/b/d$b;->f:Le/b/a/a/o/g/b/d$b;

    new-instance v3, Le/b/a/a/o/g/b/d$b;

    const-string v5, "TEXTURE_EXT_BW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/b/a/a/o/g/b/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/b/a/a/o/g/b/d$b;->g:Le/b/a/a/o/g/b/d$b;

    new-instance v5, Le/b/a/a/o/g/b/d$b;

    const-string v7, "TEXTURE_EXT_FILT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le/b/a/a/o/g/b/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le/b/a/a/o/g/b/d$b;->h:Le/b/a/a/o/g/b/d$b;

    const/4 v7, 0x4

    new-array v7, v7, [Le/b/a/a/o/g/b/d$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Le/b/a/a/o/g/b/d$b;->i:[Le/b/a/a/o/g/b/d$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/b/a/a/o/g/b/d$b;
    .locals 1

    const-class v0, Le/b/a/a/o/g/b/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/b/a/a/o/g/b/d$b;

    return-object p0
.end method

.method public static values()[Le/b/a/a/o/g/b/d$b;
    .locals 1

    sget-object v0, Le/b/a/a/o/g/b/d$b;->i:[Le/b/a/a/o/g/b/d$b;

    invoke-virtual {v0}, [Le/b/a/a/o/g/b/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/b/a/a/o/g/b/d$b;

    return-object v0
.end method
