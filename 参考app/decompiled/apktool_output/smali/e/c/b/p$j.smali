.class public final enum Le/c/b/p$j;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/c/b/p$j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Le/c/b/p$j;

.field public static final enum f:Le/c/b/p$j;

.field public static final enum g:Le/c/b/p$j;

.field public static final enum h:Le/c/b/p$j;

.field public static final enum i:Le/c/b/p$j;

.field public static final enum j:Le/c/b/p$j;

.field public static final enum k:Le/c/b/p$j;

.field public static final enum l:Le/c/b/p$j;

.field public static final synthetic m:[Le/c/b/p$j;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Le/c/b/p$j;

    const-string v1, "IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/c/b/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/b/p$j;->e:Le/c/b/p$j;

    new-instance v0, Le/c/b/p$j;

    const-string v1, "VISIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Le/c/b/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/b/p$j;->f:Le/c/b/p$j;

    new-instance v0, Le/c/b/p$j;

    const-string v1, "MERGE_FROM_STREAM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Le/c/b/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/b/p$j;->g:Le/c/b/p$j;

    new-instance v0, Le/c/b/p$j;

    const-string v1, "MAKE_IMMUTABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Le/c/b/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/b/p$j;->h:Le/c/b/p$j;

    new-instance v0, Le/c/b/p$j;

    const-string v1, "NEW_MUTABLE_INSTANCE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Le/c/b/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/b/p$j;->i:Le/c/b/p$j;

    new-instance v0, Le/c/b/p$j;

    const-string v1, "NEW_BUILDER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Le/c/b/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/b/p$j;->j:Le/c/b/p$j;

    new-instance v0, Le/c/b/p$j;

    const-string v1, "GET_DEFAULT_INSTANCE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Le/c/b/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/b/p$j;->k:Le/c/b/p$j;

    new-instance v0, Le/c/b/p$j;

    const-string v1, "GET_PARSER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Le/c/b/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/b/p$j;->l:Le/c/b/p$j;

    const/16 v1, 0x8

    new-array v1, v1, [Le/c/b/p$j;

    sget-object v10, Le/c/b/p$j;->e:Le/c/b/p$j;

    aput-object v10, v1, v2

    sget-object v2, Le/c/b/p$j;->f:Le/c/b/p$j;

    aput-object v2, v1, v3

    sget-object v2, Le/c/b/p$j;->g:Le/c/b/p$j;

    aput-object v2, v1, v4

    sget-object v2, Le/c/b/p$j;->h:Le/c/b/p$j;

    aput-object v2, v1, v5

    sget-object v2, Le/c/b/p$j;->i:Le/c/b/p$j;

    aput-object v2, v1, v6

    sget-object v2, Le/c/b/p$j;->j:Le/c/b/p$j;

    aput-object v2, v1, v7

    sget-object v2, Le/c/b/p$j;->k:Le/c/b/p$j;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Le/c/b/p$j;->m:[Le/c/b/p$j;

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

.method public static valueOf(Ljava/lang/String;)Le/c/b/p$j;
    .locals 1

    const-class v0, Le/c/b/p$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/c/b/p$j;

    return-object p0
.end method

.method public static values()[Le/c/b/p$j;
    .locals 1

    sget-object v0, Le/c/b/p$j;->m:[Le/c/b/p$j;

    invoke-virtual {v0}, [Le/c/b/p$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/c/b/p$j;

    return-object v0
.end method
