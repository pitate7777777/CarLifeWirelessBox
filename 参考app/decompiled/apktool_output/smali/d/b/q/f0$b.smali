.class public Ld/b/q/f0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/q/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Ld/b/q/f0;


# direct methods
.method public constructor <init>(Ld/b/q/f0;)V
    .locals 0

    iput-object p1, p0, Ld/b/q/f0$b;->e:Ld/b/q/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/b/q/f0$b;->e:Ld/b/q/f0;

    const/4 v1, 0x0

    iput-object v1, v0, Ld/b/q/f0;->r:Ld/b/q/f0$b;

    invoke-virtual {v0}, Ld/b/q/f0;->drawableStateChanged()V

    return-void
.end method
