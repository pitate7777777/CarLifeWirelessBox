.class public final Ld/k/d/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Ld/k/d/b0;->e:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/k/d/b0;->e:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ld/k/d/g0;->o(Ljava/util/ArrayList;I)V

    return-void
.end method
