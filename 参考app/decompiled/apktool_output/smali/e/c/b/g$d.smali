.class public final Le/c/b/g$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Le/c/b/i;

.field public final b:[B


# direct methods
.method public constructor <init>(ILe/c/b/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Le/c/b/g$d;->b:[B

    invoke-static {p1}, Le/c/b/i;->r([B)Le/c/b/i;

    move-result-object p1

    iput-object p1, p0, Le/c/b/g$d;->a:Le/c/b/i;

    return-void
.end method
