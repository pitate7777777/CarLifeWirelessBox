.class public abstract Le/c/b/g$e;
.super Le/c/b/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/c/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Le/c/b/f;

    invoke-direct {v0, p0}, Le/c/b/f;-><init>(Le/c/b/g;)V

    return-object v0
.end method
