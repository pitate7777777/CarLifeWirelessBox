.class public Lc/a/a/b/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final e:I

.field public final f:Landroid/os/Bundle;

.field public final synthetic g:Lc/a/a/b/b;


# direct methods
.method public constructor <init>(Lc/a/a/b/b;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lc/a/a/b/b$c;->g:Lc/a/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lc/a/a/b/b$c;->e:I

    iput-object p3, p0, Lc/a/a/b/b$c;->f:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lc/a/a/b/b$c;->g:Lc/a/a/b/b;

    iget v1, p0, Lc/a/a/b/b$c;->e:I

    iget-object v2, p0, Lc/a/a/b/b$c;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lc/a/a/b/b;->a(ILandroid/os/Bundle;)V

    return-void
.end method
