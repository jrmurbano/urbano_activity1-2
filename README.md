# CarRent - Fl# CarRent - Flutter Car Rental App

A comprehensive Flutter car rental app demonstrating core Flutter concepts and advanced layout techniques.

## Project Structure

```
lib/
├── models/          # Data models
├── views/           # Pages (Home, Services, Profile, Chat Support)
├── widgets/         # Reusable components
└── services/        # Business logic
```

## First Activity - Core Flutter Concepts

**Task 1:** Created organized folder structure (`models/`, `views/`, `widgets/`, `services/`)

**Task 2:** Built StatelessWidget Hello World with car rental theme (`CarRentalWelcome`)

**Task 3:** Converted to StatefulWidget with "Cars viewed" counter using `setState()`

**Task 4:** Created `CustomRentalButton` widget, reused in Home and Services pages

**Task 5:** Used Material (`ElevatedButton`, `Slider`) and Cupertino (`CupertinoButton`, `CupertinoActivityIndicator`) widgets together

**Task 6:** Implemented `BottomNavigationBar` navigation between Home, Services, and Profile pages

**Task 7:** Added comprehensive code comments explaining widget hierarchy

**Task 8:** Refactored car card into 5 smaller widgets: `CarImageWidget`, `CarInfoWidget`, `CarRatingWidget`, `CarPriceWidget`, `CarCard`

**Task 9:** Integrated `flutter_staggered_grid_view` package for car listing grid on Services page

**Task 10:** Created comprehensive README documenting project structure and implementation

## Second Activity - Layout Mastery

**Task 1:** Row with 3 Text widgets (`ThreeTextRow` - Stats | Activity | Settings)

**Task 2:** Column with centered buttons (`CenteredButtonsColumn` - Quick Rental & Contact Us)

**Task 3:** Styled Container (`StyledInfoBox` - Membership Benefits with padding/margin/backgroundColor)

**Task 4:** Row + Column combination (`ProfileContactCard` - Avatar + contact details)

**Task 5:** Row with Expanded widgets (`StatsExpandedRow` - Total Rentals & Active Bookings)

**Task 6:** Row with spaceEvenly icons (`IconActionBar` - Favorites, Share, Notifications, Settings)

**Task 7:** Stack with layers (`HeroStackBanner` - Hero image with gradient overlay and floating button)

**Task 8:** Flexible widgets in Row (`FlexibleContentRow` - Rental plan comparison with flex factors)

**Task 9:** Chat bubble with Stack (`ChatBubble` + `ChatSupportPage` - Customer support chat interface)

**Task 10:** Nested Row/Column grid (`PreferencesGrid` - 2x3 rental preferences grid without GridView)

## Quick Start

```bash
flutter pub get
flutter run
```

## Dependencies

```yaml
cupertino_icons: ^1.0.8
flutter_staggered_grid_view: ^0.7.0
```

## Key Features

- **Home Page:** Welcome screen, quick action buttons, and featured car card
- **Services Page:** Service cards, rental plan comparison, and 6-car staggered grid layout
- **Profile Page:** User info, stats, preferences grid, and membership benefits
- **Chat Support:** Dedicated customer support page with chat bubbles
- **Navigation:** Bottom tab bar with 3 main pages + modal chat page
- **Theme:** Professional car rental UI with blue accent colors

## Layout Widgets Demonstrated

- Row (MainAxisAlignment variations)
- Column (MainAxisAlignment.center)
- Stack (Positioned overlays)
- Container (padding, margin, backgroundColor)
- Expanded (equal space distribution)
- Flexible (flex factors)
- Nested Row/Column (grid-like layouts)

---