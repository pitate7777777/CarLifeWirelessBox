.class public Le/b/b/o/p$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/b/o/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Le/b/b/o/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Carlife Connect Timeout"

    aput-object v2, v0, v1

    const-string v1, "MainFragment"

    invoke-static {v1, v0}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x3f3

    invoke-static {v0}, Le/b/b/p/b;->a(I)V

    return-void
.end method
