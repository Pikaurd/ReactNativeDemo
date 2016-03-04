'use strict';

import React, {
  NativeModules,
  TouchableHighlight,
  Text,
  View
} from 'react-native';

var styles = React.StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'orange'
  }
});

class SimpleApp extends React.Component {
  constructor(props) {
    super(props);
    this.notificationCenter = NativeModules.RNNotificationManager;
  }

  render() {
    return (
      <View style={styles.container}>
        <Text>This is a simple application.</Text>
        <TouchableHighlight onPress={ this._onPressButton.bind(this) }>
          <Text>Tap me!</Text>
        </TouchableHighlight>
      </View>
    )
  }

  _onPressButton(event) {
    console.log("Press action");
    this.notificationCenter.postNotification("pushVC", {"k": "hahahaha jklsdjklfjsdlkcj;"});
  }
}

React.AppRegistry.registerComponent('SimpleApp', () => SimpleApp);
