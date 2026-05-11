.class public final synthetic Le/b/a/a/r/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic e:Le/b/a/a/r/f;


# direct methods
.method public synthetic constructor <init>(Le/b/a/a/r/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/r/a;->e:Le/b/a/a/r/f;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Le/b/a/a/r/a;->e:Le/b/a/a/r/f;

    invoke-static {v0, p1}, Le/b/a/a/r/f;->a(Le/b/a/a/r/f;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
