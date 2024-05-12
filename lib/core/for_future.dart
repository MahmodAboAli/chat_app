// BlocBuilder<ThemeBloc, ThemeState>(
//                 builder: (context, state) {
//                   ThemeBloc bloc = BlocProvider.of<ThemeBloc>(context);
//                   return IconButton(
//                     onPressed: () {
//                       BlocProvider.of<ThemeBloc>(context)
//                           .add(ChangeThemeEvent());
//                     },
//                     icon: AnimatedSwitcher(
//                       duration: const Duration(milliseconds: 400),
//                       transitionBuilder: (child, animation) {
//                         return ScaleTransition(
//                           scale: animation,
//                           child: child
//                         );
//                       },
//                       child: bloc.isDark
//                               ? Icon(Icons.light_mode,
//                                   key: ValueKey(bloc.isDark), color: whiteColor)
//                               : Icon(
//                                   Icons.dark_mode,
//                                   key: ValueKey(bloc.isDark),
//                                   color: dark3Color,
//                                 ),
//                     ),
//                   );
//                 },
//               )