.class public Lc/a/a/b/b$b;
.super Lc/a/a/b/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Lc/a/a/b/b;


# direct methods
.method public constructor <init>(Lc/a/a/b/b;)V
    .locals 0

    iput-object p1, p0, Lc/a/a/b/b$b;->e:Lc/a/a/b/b;

    invoke-direct {p0}, Lc/a/a/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public x1(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lc/a/a/b/b$b;->e:Lc/a/a/b/b;

    iget-object v1, v0, Lc/a/a/b/b;->e:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lc/a/a/b/b$c;

    invoke-direct {v2, v0, p1, p2}, Lc/a/a/b/b$c;-><init>(Lc/a/a/b/b;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lc/a/a/b/b;->a(ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method
