.class public final enum Ld/f/b/h/l/o$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/f/b/h/l/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld/f/b/h/l/o$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Ld/f/b/h/l/o$a;

.field public static final enum f:Ld/f/b/h/l/o$a;

.field public static final enum g:Ld/f/b/h/l/o$a;

.field public static final enum h:Ld/f/b/h/l/o$a;

.field public static final synthetic i:[Ld/f/b/h/l/o$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Ld/f/b/h/l/o$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld/f/b/h/l/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/f/b/h/l/o$a;->e:Ld/f/b/h/l/o$a;

    new-instance v0, Ld/f/b/h/l/o$a;

    const-string v1, "START"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ld/f/b/h/l/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/f/b/h/l/o$a;->f:Ld/f/b/h/l/o$a;

    new-instance v0, Ld/f/b/h/l/o$a;

    const-string v1, "END"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ld/f/b/h/l/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/f/b/h/l/o$a;->g:Ld/f/b/h/l/o$a;

    new-instance v0, Ld/f/b/h/l/o$a;

    const-string v1, "CENTER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ld/f/b/h/l/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/f/b/h/l/o$a;->h:Ld/f/b/h/l/o$a;

    const/4 v1, 0x4

    new-array v1, v1, [Ld/f/b/h/l/o$a;

    sget-object v6, Ld/f/b/h/l/o$a;->e:Ld/f/b/h/l/o$a;

    aput-object v6, v1, v2

    sget-object v2, Ld/f/b/h/l/o$a;->f:Ld/f/b/h/l/o$a;

    aput-object v2, v1, v3

    sget-object v2, Ld/f/b/h/l/o$a;->g:Ld/f/b/h/l/o$a;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Ld/f/b/h/l/o$a;->i:[Ld/f/b/h/l/o$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ld/f/b/h/l/o$a;
    .locals 1

    const-class v0, Ld/f/b/h/l/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld/f/b/h/l/o$a;

    return-object p0
.end method

.method public static values()[Ld/f/b/h/l/o$a;
    .locals 1

    sget-object v0, Ld/f/b/h/l/o$a;->i:[Ld/f/b/h/l/o$a;

    invoke-virtual {v0}, [Ld/f/b/h/l/o$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/f/b/h/l/o$a;

    return-object v0
.end method
