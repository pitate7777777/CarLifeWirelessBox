.class public Ld/j/b/e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/j/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ld/j/b/e;


# direct methods
.method public constructor <init>(Ld/j/b/e;)V
    .locals 0

    iput-object p1, p0, Ld/j/b/e$b;->e:Ld/j/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/j/b/e$b;->e:Ld/j/b/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/j/b/e;->s(I)V

    return-void
.end method
