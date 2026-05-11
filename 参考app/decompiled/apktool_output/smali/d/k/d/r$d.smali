.class public Ld/k/d/r$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/k/d/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ld/k/d/r;


# direct methods
.method public constructor <init>(Ld/k/d/r;)V
    .locals 0

    iput-object p1, p0, Ld/k/d/r$d;->e:Ld/k/d/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/k/d/r$d;->e:Ld/k/d/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld/k/d/r;->B(Z)Z

    return-void
.end method
