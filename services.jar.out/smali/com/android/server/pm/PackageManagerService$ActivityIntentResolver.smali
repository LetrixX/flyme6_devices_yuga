.class final Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActivityIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$ActionIterGenerator;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$CategoriesIterGenerator;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$SchemesIterGenerator;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$AuthoritiesIterGenerator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 9483
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 9966
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9965
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    .line 9483
    return-void
.end method

.method private adjustPriority(Ljava/util/List;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .locals 17
    .param p2, "intent"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9654
    .local p1, "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v14

    if-gtz v14, :cond_0

    .line 9655
    return-void

    .line 9658
    :cond_0
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v3, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 9659
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 9661
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v13

    .line 9662
    .local v13, "systemApp":Z
    if-nez v13, :cond_1

    .line 9664
    const-string/jumbo v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Non-system app; cap priority to 0; package: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 9665
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 9664
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 9666
    const-string/jumbo v16, " activity: "

    .line 9664
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 9666
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 9664
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 9667
    const-string/jumbo v16, " origPrio: "

    .line 9664
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 9667
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v16

    .line 9664
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9668
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 9669
    return-void

    .line 9672
    :cond_1
    if-nez p1, :cond_2

    .line 9675
    return-void

    .line 9680
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->findMatchingActivity(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v8

    .line 9681
    .local v8, "foundActivity":Landroid/content/pm/PackageParser$Activity;
    if-nez v8, :cond_3

    .line 9689
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 9690
    return-void

    .line 9697
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    iget-object v14, v8, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9698
    .local v11, "intentListCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v9

    .line 9701
    .local v9, "foundFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 9702
    .local v2, "actionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    .line 9704
    new-instance v14, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$ActionIterGenerator;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$ActionIterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

    .line 9703
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 9705
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_4

    .line 9713
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 9714
    return-void

    .line 9719
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v7

    .line 9720
    .local v7, "categoriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v7, :cond_5

    .line 9721
    new-instance v14, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$CategoriesIterGenerator;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$CategoriesIterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v7}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 9723
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_5

    .line 9731
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 9732
    return-void

    .line 9737
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->schemesIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 9738
    .local v12, "schemesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v12, :cond_6

    .line 9739
    new-instance v14, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$SchemesIterGenerator;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$SchemesIterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v12}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 9741
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_6

    .line 9749
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 9750
    return-void

    .line 9756
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 9757
    .local v5, "authoritiesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v5, :cond_7

    .line 9759
    new-instance v14, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$AuthoritiesIterGenerator;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$AuthoritiesIterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

    .line 9758
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v5}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 9761
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_7

    .line 9769
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 9770
    return-void

    .line 9775
    :cond_7
    const/4 v6, 0x0

    .line 9776
    .local v6, "cappedPriority":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v10, v14, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_8

    .line 9777
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v14

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 9776
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 9779
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v14

    if-le v14, v6, :cond_9

    .line 9787
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 9788
    return-void

    .line 9652
    :cond_9
    return-void
.end method

.method private findMatchingActivity(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/PackageParser$Activity;
    .locals 5
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            ")",
            "Landroid/content/pm/PackageParser$Activity;"
        }
    .end annotation

    .prologue
    .local p1, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    const/4 v4, 0x0

    .line 9549
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sysActivity$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 9550
    .local v0, "sysActivity":Landroid/content/pm/PackageParser$Activity;
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9551
    return-object v0

    .line 9553
    :cond_1
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9554
    return-object v0

    .line 9556
    :cond_2
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9557
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9558
    return-object v0

    .line 9560
    :cond_3
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9561
    return-object v0

    .line 9565
    .end local v0    # "sysActivity":Landroid/content/pm/PackageParser$Activity;
    :cond_4
    return-object v4
.end method

.method private getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator",
            "<TT;>;",
            "Ljava/util/Iterator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 9609
    .local p1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .local p2, "generator":Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;, "Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator<TT;>;"
    .local p3, "searchIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9611
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 9607
    :cond_1
    return-void

    .line 9615
    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 9618
    .local v4, "searchAction":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 9619
    .local v1, "intentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9620
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 9621
    .local v0, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v5, 0x0

    .line 9625
    .local v5, "selectionFound":Z
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;->generate(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/util/Iterator;

    move-result-object v3

    .line 9626
    .local v3, "intentSelectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_4
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 9627
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9628
    .local v2, "intentSelection":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 9629
    const/4 v5, 0x1

    .line 9636
    .end local v2    # "intentSelection":Ljava/lang/Object;, "TT;"
    :cond_5
    if-nez v5, :cond_3

    .line 9637
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method


# virtual methods
.method public final addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .locals 9
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 9794
    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    .line 9795
    .local v5, "systemApp":Z
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9802
    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9803
    .local v0, "NI":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 9804
    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 9805
    .local v1, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const-string/jumbo v6, "activity"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9807
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 9809
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_2

    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v6, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 9810
    :goto_1
    invoke-direct {p0, v4, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->adjustPriority(Ljava/util/List;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    .line 9816
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->debugCheck()Z

    move-result v6

    if-nez v6, :cond_1

    .line 9817
    const-string/jumbo v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "==> For Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9819
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 9803
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9809
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    const/4 v4, 0x0

    .local v4, "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    goto :goto_1

    .line 9793
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    :cond_3
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "dest"    # Ljava/util/List;

    .prologue
    .line 9843
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z
    .locals 6
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 9845
    iget-object v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 9846
    .local v1, "filterAi":Landroid/content/pm/ActivityInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 9847
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 9848
    .local v0, "destAi":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 9849
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 9850
    return v5

    .line 9846
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 9853
    .end local v0    # "destAi":Landroid/content/pm/ActivityInfo;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 9937
    check-cast p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p3    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .prologue
    .line 9939
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9940
    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 9939
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9941
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 9942
    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Activity;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 9943
    const-string/jumbo v0, " filter "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9944
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9938
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .prologue
    move-object v0, p3

    .line 9953
    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 9954
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9955
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 9954
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9956
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 9957
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Activity;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 9958
    const/4 v1, 0x1

    if-le p4, v1, :cond_0

    .line 9959
    const-string/jumbo v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, " filters)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9961
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 9952
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 9948
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .prologue
    .line 9949
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    return-object v0
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "userId"    # I

    .prologue
    .line 9862
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z

    move-result v0

    return v0
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z
    .locals 4
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 9863
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    return v2

    .line 9864
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v3, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    .line 9865
    .local v0, "p":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2

    .line 9866
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 9867
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_2

    .line 9871
    iget v3, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    .line 9872
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v2

    .line 9871
    :cond_1
    return v2

    .line 9875
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    return v2
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/IntentFilter;

    .prologue
    .line 9879
    check-cast p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p2    # "info":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result v0

    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .prologue
    .line 9881
    iget-object v0, p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 9857
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 9858
    new-array v0, p1, [Landroid/content/pm/PackageParser$ActivityIntentInfo;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 8
    .param p1, "info"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 9887
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v7

    .line 9888
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    invoke-virtual {v4, v5, v6, p3}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9889
    return-object v7

    .line 9891
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    .line 9892
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    .line 9894
    return-object v7

    .line 9896
    :cond_2
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v4, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 9897
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_3

    .line 9898
    return-object v7

    .line 9900
    :cond_3
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 9901
    invoke-virtual {v2, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v5

    .line 9900
    invoke-static {v0, v4, v5, p3}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 9902
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_4

    .line 9903
    return-object v7

    .line 9905
    :cond_4
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 9906
    .local v3, "res":Landroid/content/pm/ResolveInfo;
    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 9907
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_5

    .line 9908
    iput-object p1, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 9910
    :cond_5
    if-eqz p1, :cond_6

    .line 9911
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->handleAllWebDataURI()Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 9913
    :cond_6
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v4

    iput v4, v3, Landroid/content/pm/ResolveInfo;->priority:I

    .line 9914
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget v4, v4, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v4, v3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 9917
    iput p2, v3, Landroid/content/pm/ResolveInfo;->match:I

    .line 9918
    iget-boolean v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDefault:Z

    iput-boolean v4, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 9919
    iget v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->labelRes:I

    iput v4, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 9920
    iget-object v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v4, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 9921
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, p3}, Lcom/android/server/pm/PackageManagerService;->-wrap12(Lcom/android/server/pm/PackageManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 9922
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 9926
    :goto_0
    iget v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v4, v3, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 9927
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ResolveInfo;->system:Z

    .line 9928
    return-object v3

    .line 9924
    :cond_7
    iget v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v4, v3, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_0
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .prologue
    .line 9885
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p1    # "info":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 9494
    sget-object v8, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v8, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v8

    if-nez v8, :cond_0

    return-object v9

    .line 9495
    :cond_0
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 9497
    const/high16 v8, 0x10000

    and-int/2addr v8, p3

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    .line 9496
    :cond_1
    invoke-super {p0, p1, p2, v7, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v4

    .line 9500
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 9501
    .local v1, "callingUid":I
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7, v1}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 9502
    .local v6, "pkgs":[Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 9503
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    const/16 v7, 0x3e8

    if-eq v1, v7, :cond_6

    .line 9504
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7, v1}, Lcom/android/server/pm/PackageManagerService;->getFlagsForUid(I)I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_5

    const/4 v2, 0x1

    .line 9506
    .local v2, "isNotSystem":Z
    :goto_1
    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 9507
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 9508
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 9509
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 9510
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->protect:Z

    if-eqz v7, :cond_2

    if-eqz v5, :cond_3

    .line 9511
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 9512
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 9502
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "isNotSystem":Z
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .restart local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 9504
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "isNotSystem":Z
    goto :goto_1

    .line 9503
    .end local v2    # "isNotSystem":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "isNotSystem":Z
    goto :goto_1

    .line 9516
    :cond_7
    return-object v4
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9487
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 9488
    :cond_0
    if-eqz p3, :cond_1

    const/high16 v0, 0x10000

    :goto_0
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 9489
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9488
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p4, "packageActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    const/4 v1, 0x0

    .line 9521
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 9522
    :cond_0
    if-nez p4, :cond_1

    .line 9523
    return-object v1

    .line 9525
    :cond_1
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 9526
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    .line 9527
    .local v3, "defaultOnly":Z
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 9529
    .local v6, "N":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 9532
    .local v4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_4

    .line 9533
    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    iget-object v9, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 9534
    .local v9, "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 9536
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v7, v0, [Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 9537
    .local v7, "array":[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9538
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9532
    .end local v7    # "array":[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 9526
    .end local v3    # "defaultOnly":Z
    .end local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "N":I
    .end local v8    # "i":I
    .end local v9    # "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "defaultOnly":Z
    goto :goto_0

    .restart local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .restart local v6    # "N":I
    .restart local v8    # "i":I
    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    .line 9541
    invoke-super/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .locals 5
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 9824
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9831
    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9832
    .local v0, "NI":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9833
    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 9838
    .local v1, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 9832
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9823
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_0
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9933
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get7()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 9932
    return-void
.end method
