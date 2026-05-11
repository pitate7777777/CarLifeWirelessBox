.class public Ld/v/a/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/v/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ld/v/a/b;


# direct methods
.method public constructor <init>(Ld/v/a/b;)V
    .locals 0

    iput-object p1, p0, Ld/v/a/b$c;->e:Ld/v/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/v/a/b$c;->e:Ld/v/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/v/a/b;->setScrollState(I)V

    iget-object v0, p0, Ld/v/a/b$c;->e:Ld/v/a/b;

    .line 1
    iget v1, v0, Ld/v/a/b;->j:I

    invoke-virtual {v0, v1}, Ld/v/a/b;->q(I)V

    return-void
.end method
