# taiwo-applepie

## Persistent Error and Debug method
I was getting an error 
```
Thread 1: Fatal error: Unexpectedly found nil while unwrapping an Optional value.
```
on 
```
@IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
        
    }
```
So I checked my work but it looked like i followed the book's instructions. So I google the error and found out from [Apple Pie Guided Project: getting error - Thread 1: Fatal error: Unexpectedly found nil while unwrapping an Optional value](https://developer.apple.com/forums/thread/692536) that `sender.title(for: .normal)!` was an out-of-date method to get a title name and was given other possible solutions. So I change the function to
```
@IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.titleLabel!.text!
        print(letterString)
            let letter = Character(letterString.lowercased())
            currentGame.playerGuessed(letter: letter)
            updateGameState()
        
    }
```
