import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

import 'constants/pluto_grid_example_colors.dart';
import 'screen/development_screen.dart';
import 'screen/empty_screen.dart';
import 'screen/feature/index.dart';
import 'screen/home_screen.dart';

PlutoGridConfiguration buildPlutoConfig({
  bool enableMoveDownAfterSelecting = false,
  bool enableMoveHorizontalInEditing = false,
  PlutoGridEnterKeyAction enterKeyAction =
      PlutoGridEnterKeyAction.editingAndMoveDown,
  PlutoGridTabKeyAction tabKeyAction = PlutoGridTabKeyAction.normal,
  PlutoGridShortcut shortcut = const PlutoGridShortcut(),
  PlutoGridStyleConfig? style,
  PlutoGridScrollbarConfig scrollbar = const PlutoGridScrollbarConfig(),
  PlutoGridColumnFilterConfig columnFilter =
      const PlutoGridColumnFilterConfig(),
  PlutoGridColumnSizeConfig columnSize = const PlutoGridColumnSizeConfig(),
  PlutoGridLocaleText localeText = const PlutoGridLocaleText(),
}) {
  return PlutoGridConfiguration(
    enableMoveDownAfterSelecting: enableMoveDownAfterSelecting,
    enableMoveHorizontalInEditing: enableMoveHorizontalInEditing,
    enterKeyAction: enterKeyAction,
    tabKeyAction: tabKeyAction,
    shortcut: shortcut,
    style: style ?? const PlutoGridStyleConfig.dark(),
    scrollbar: scrollbar,
    columnFilter: columnFilter,
    columnSize: columnSize,
    localeText: localeText,
  );
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:
          kReleaseMode ? HomeScreen.routeName : DevelopmentScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        AddAndRemoveColumnRowScreen.routeName: (context) =>
            const AddAndRemoveColumnRowScreen(),
        AddRowsAsynchronouslyScreen.routeName: (context) =>
            const AddRowsAsynchronouslyScreen(),
        CellRendererScreen.routeName: (context) => const CellRendererScreen(),
        CellSelectionScreen.routeName: (context) => const CellSelectionScreen(),
        RTLScreen.routeName: (context) => const RTLScreen(),
        ColumnFilteringScreen.routeName: (context) =>
            const ColumnFilteringScreen(),
        ColumnFooterScreen.routeName: (context) => const ColumnFooterScreen(),
        ColumnFreezingScreen.routeName: (context) =>
            const ColumnFreezingScreen(),
        ColumnGroupScreen.routeName: (context) => const ColumnGroupScreen(),
        ColumnHidingScreen.routeName: (context) => const ColumnHidingScreen(),
        ColumnMenuScreen.routeName: (context) => const ColumnMenuScreen(),
        ColumnMovingScreen.routeName: (context) => const ColumnMovingScreen(),
        ColumnResizingScreen.routeName: (context) =>
            const ColumnResizingScreen(),
        ColumnSortingScreen.routeName: (context) => const ColumnSortingScreen(),
        CopyAndPasteScreen.routeName: (context) => const CopyAndPasteScreen(),
        CurrencyTypeColumnScreen.routeName: (context) =>
            const CurrencyTypeColumnScreen(),
        DarkModeScreen.routeName: (context) => const DarkModeScreen(),
        DateTypeColumnScreen.routeName: (context) =>
            const DateTypeColumnScreen(),
        DualModeScreen.routeName: (context) => const DualModeScreen(),
        EditingStateScreen.routeName: (context) => const EditingStateScreen(),
        ExportScreen.routeName: (context) => const ExportScreen(),
        GridAsPopupScreen.routeName: (context) => const GridAsPopupScreen(),
        ListingModeScreen.routeName: (context) => const ListingModeScreen(),
        MovingScreen.routeName: (context) => const MovingScreen(),
        NumberTypeColumnScreen.routeName: (context) =>
            const NumberTypeColumnScreen(),
        RowColorScreen.routeName: (context) => const RowColorScreen(),
        RowGroupScreen.routeName: (context) => const RowGroupScreen(),
        RowInfinityScrollScreen.routeName: (context) =>
            const RowInfinityScrollScreen(),
        RowLazyPaginationScreen.routeName: (context) =>
            const RowLazyPaginationScreen(),
        RowMovingScreen.routeName: (context) => const RowMovingScreen(),
        RowPaginationScreen.routeName: (context) => const RowPaginationScreen(),
        RowSelectionScreen.routeName: (context) => const RowSelectionScreen(),
        RowWithCheckboxScreen.routeName: (context) =>
            const RowWithCheckboxScreen(),
        SelectionTypeColumnScreen.routeName: (context) =>
            const SelectionTypeColumnScreen(),
        TextTypeColumnScreen.routeName: (context) =>
            const TextTypeColumnScreen(),
        TimeTypeColumnScreen.routeName: (context) =>
            const TimeTypeColumnScreen(),
        ValueFormatterScreen.routeName: (context) =>
            const ValueFormatterScreen(),
        // only development
        EmptyScreen.routeName: (context) => const EmptyScreen(),
        DevelopmentScreen.routeName: (context) => const DevelopmentScreen(),
      },
      theme: ThemeData.dark(),
    );
  }
}
