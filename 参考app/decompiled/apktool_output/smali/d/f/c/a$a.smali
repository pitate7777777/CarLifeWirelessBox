.class public final enum Ld/f/c/a$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/f/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld/f/c/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Ld/f/c/a$a;

.field public static final enum f:Ld/f/c/a$a;

.field public static final enum g:Ld/f/c/a$a;

.field public static final enum h:Ld/f/c/a$a;

.field public static final enum i:Ld/f/c/a$a;

.field public static final enum j:Ld/f/c/a$a;

.field public static final enum k:Ld/f/c/a$a;

.field public static final synthetic l:[Ld/f/c/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Ld/f/c/a$a;

    const-string v1, "INT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld/f/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/f/c/a$a;->e:Ld/f/c/a$a;

    new-instance v0, Ld/f/c/a$a;

    const-string v1, "FLOAT_TYPE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ld/f/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/f/c/a$a;->f:Ld/f/c/a$a;

    new-instance v0, Ld/f/c/a$a;

    const-string v1, "COLOR_TYPE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ld/f/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/f/c/a$a;->g:Ld/f/c/a$a;

    new-instance v0, Ld/f/c/a$a;

    const-string v1, "COLOR_DRAWABLE_TYPE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ld/f/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/f/c/a$a;->h:Ld/f/c/a$a;

    new-instance v0, Ld/f/c/a$a;

    const-string v1, "STRING_TYPE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ld/f/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/f/c/a$a;->i:Ld/f/c/a$a;

    new-instance v0, Ld/f/c/a$a;

    const-string v1, "BOOLEAN_TYPE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ld/f/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/f/c/a$a;->j:Ld/f/c/a$a;

    new-instance v0, Ld/f/c/a$a;

    const-string v1, "DIMENSION_TYPE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ld/f/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/f/c/a$a;->k:Ld/f/c/a$a;

    const/4 v1, 0x7

    new-array v1, v1, [Ld/f/c/a$a;

    sget-object v9, Ld/f/c/a$a;->e:Ld/f/c/a$a;

    aput-object v9, v1, v2

    sget-object v2, Ld/f/c/a$a;->f:Ld/f/c/a$a;

    aput-object v2, v1, v3

    sget-object v2, Ld/f/c/a$a;->g:Ld/f/c/a$a;

    aput-object v2, v1, v4

    sget-object v2, Ld/f/c/a$a;->h:Ld/f/c/a$a;

    aput-object v2, v1, v5

    sget-object v2, Ld/f/c/a$a;->i:Ld/f/c/a$a;

    aput-object v2, v1, v6

    sget-object v2, Ld/f/c/a$a;->j:Ld/f/c/a$a;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Ld/f/c/a$a;->l:[Ld/f/c/a$a;

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

.method public static valueOf(Ljava/lang/String;)Ld/f/c/a$a;
    .locals 1

    const-class v0, Ld/f/c/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld/f/c/a$a;

    return-object p0
.end method

.method public static values()[Ld/f/c/a$a;
    .locals 1

    sget-object v0, Ld/f/c/a$a;->l:[Ld/f/c/a$a;

    invoke-virtual {v0}, [Ld/f/c/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/f/c/a$a;

    return-object v0
.end method
