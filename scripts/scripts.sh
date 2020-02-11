#!/bin/zsh

yarn-reset() {
  echo "Navigating to Cabochon"
  to:cabochon
  yarn-reset-current

  echo "Navigating to Universe"
  to:universe
  yarn-reset-current

  echo "Navigating to Cabochon"
  to:cabochon
}

yarn-reset-cabochon() {
  echo "Navigating to Cabochon"
  to:cabochon
  yarn-reset-current
}

yarn-reset-universe() {
  echo "Navigating to Universe"
  to:universe
  yarn-reset-current
}

yarn-reset-tachyon() {
  echo "Navigating to Tachyon"
  to:tachyon
  yarn-reset-current
}

yarn-reset-lapidary() {
  echo "Navigating to Lapidary"
  to:lapidary
  yarn-reset-current
}


yarn-reset-current() {
  echo "Cleaning Yarn Cache"
  yarn cache clean

  echo "Removing node_modules folder"
  rm -rf node_modules

  echo "Installing Yarn dependencies"
  yarn
}
