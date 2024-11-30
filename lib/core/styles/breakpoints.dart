import 'package:responsive_framework/responsive_framework.dart';

/// Generates a list of responsive breakpoints for scaling UI elements.
///
/// This method defines various breakpoints to ensure the application's layout
/// adjusts appropriately across different screen sizes. The `scale` parameter
/// allows fine-tuning of scaling factors for specific breakpoints.
///
/// Parameters:
/// - [scale]: A scaling factor applied to specific breakpoints for 
/// dynamic resizing.
///
/// Returns:
/// - A list of [ResponsiveBreakpoint] objects with predefined screen widths 
/// and scale factors.
///
/// Breakpoints:
/// - 600px, 800px, and 1000px: Adjusted for tablet views, 
/// using the specified `scale` for finer control.
/// - 1200px: Optimized for desktop views.
/// - 2460px: Tailored for 4K screens.
List<ResponsiveBreakpoint> breakpoints(double scale) => [
      ResponsiveBreakpoint.autoScale(
        600,
        name: TABLET,
        scaleFactor: scale,
      ),
      ResponsiveBreakpoint.autoScale(
        800,
        name: TABLET,
        scaleFactor: scale,
      ),
      const ResponsiveBreakpoint.autoScale(
        1000,
        name: TABLET,
      ),
      const ResponsiveBreakpoint.autoScale(
        1200,
        name: DESKTOP,
      ),
      const ResponsiveBreakpoint.autoScale(
        2460,
        name: '4K',
      ),
    ];
