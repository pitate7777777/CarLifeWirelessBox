.class public Ld/h/e/b/h$c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/h/e/b/h$c;->a(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ld/h/e/b/h$c;


# direct methods
.method public constructor <init>(Ld/h/e/b/h$c;I)V
    .locals 0

    iput-object p1, p0, Ld/h/e/b/h$c$b;->f:Ld/h/e/b/h$c;

    iput p2, p0, Ld/h/e/b/h$c$b;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/h/e/b/h$c$b;->f:Ld/h/e/b/h$c;

    iget v1, p0, Ld/h/e/b/h$c$b;->e:I

    invoke-virtual {v0, v1}, Ld/h/e/b/h$c;->d(I)V

    return-void
.end method
