//
//  WelcomeView.swift
//  UIKit.XcodePreviews
//
//  Created by Leandro Romano on 14/11/19.
//  Copyright © 2019 Leandro Romano. All rights reserved.
//

import UIKit

protocol WelcomeViewDelegate: class {
    
    func didTapContinueButton()
    
}

class WelcomeView: UIView {

    // MARK: - Properties
    weak var delegate: WelcomeViewDelegate?

    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()

        label.text = .welcomeTo
        label.font = .heavyTitle
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    private lazy var notesLabel: UILabel = {
        let label = UILabel()

        label.text = .notes
        label.font = .heavyTitle
        label.textColor = .brownieYellow
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    private lazy var summaryLabel: UILabel = {
        let label = UILabel()

        label.text = .summary
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    // MARK: - Edit Section
    private lazy var editView: UIView = {
        let view = UIView()

        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()
    private lazy var editImageView: UIImageView = {
        let imageView = UIImageView()

        imageView.image = UIImage(systemName: "pencil.circle.fill")
        imageView.tintColor = .brownieYellow
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView
    }()
    private lazy var editTitleLabel: UILabel = {
        let label = UILabel()

        label.text = .section1Title
        label.font = .sectionTitle
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    private lazy var editSummaryLabel: UILabel = {
        let label = UILabel()

        label.text = .section1Summary
        label.font = .sectionSummary
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    // MARK: - Note to self Section
    private lazy var noteToSelfView: UIView = {
        let view = UIView()

        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()
    private lazy var noteToSelfImageView: UIImageView = {
        let imageView = UIImageView()

        imageView.image = UIImage(systemName: "moon.circle.fill")
        imageView.tintColor = .brownieYellow
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView
    }()
    private lazy var noteToSelfTitleLabel: UILabel = {
        let label = UILabel()

        label.text = .section2Title
        label.font = .sectionTitle
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    private lazy var noteToSelfSummaryLabel: UILabel = {
        let label = UILabel()

        label.text = .section2Summary
        label.font = .sectionSummary
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    // MARK: - Sketch your thoughts
    private lazy var sketchView: UIView = {
        let view = UIView()

        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()
    private lazy var sketchImageView: UIImageView = {
        let imageView = UIImageView()

        imageView.image = UIImage(systemName: "bolt.circle.fill")
        imageView.tintColor = .brownieYellow
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView
    }()
    private lazy var sketchTitleLabel: UILabel = {
        let label = UILabel()

        label.text = .section3Title
        label.font = .sectionTitle
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    private lazy var sketchSummaryLabel: UILabel = {
        let label = UILabel()

        label.text = .section3Summary
        label.font = .sectionSummary
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    private lazy var continueButton: UIButton = {
        let button = ContinueButton(title: .continueTitle)

        button.translatesAutoresizingMaskIntoConstraints = false

        return button
    }()
    
    init() {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension WelcomeView: CustomViewDelegate {
    
    func setupViews() {
        addSubview(welcomeLabel)
        addSubview(notesLabel)
        addSubview(summaryLabel)

        addSubview(editView)
        editView.addSubview(editImageView)
        editView.addSubview(editTitleLabel)
        editView.addSubview(editSummaryLabel)

        addSubview(noteToSelfView)
        noteToSelfView.addSubview(noteToSelfImageView)
        noteToSelfView.addSubview(noteToSelfTitleLabel)
        noteToSelfView.addSubview(noteToSelfSummaryLabel)

        addSubview(sketchView)
        sketchView.addSubview(sketchImageView)
        sketchView.addSubview(sketchTitleLabel)
        sketchView.addSubview(sketchSummaryLabel)

        addSubview(continueButton)
    }
    
    func setupConstraints() {
        welcomeLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: .verticalLarge).isActive = true
        welcomeLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: .horizontal).isActive = true
        welcomeLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -.horizontal).isActive = true

        notesLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: .titleVerticalNegative).isActive = true
        notesLabel.leadingAnchor.constraint(equalTo: welcomeLabel.leadingAnchor).isActive = true
        notesLabel.trailingAnchor.constraint(equalTo: welcomeLabel.trailingAnchor).isActive = true

        summaryLabel.topAnchor.constraint(equalTo: notesLabel.bottomAnchor, constant: .vertical).isActive = true
        summaryLabel.leadingAnchor.constraint(equalTo: notesLabel.leadingAnchor).isActive = true
        summaryLabel.trailingAnchor.constraint(equalTo: notesLabel.trailingAnchor).isActive = true

        // MARK: Edit Constraints
        editView.topAnchor.constraint(equalTo: summaryLabel.bottomAnchor, constant: .verticalLarge).isActive = true
        editView.leadingAnchor.constraint(equalTo: summaryLabel.leadingAnchor).isActive = true
        editView.trailingAnchor.constraint(equalTo: summaryLabel.trailingAnchor).isActive = true

        editImageView.topAnchor.constraint(equalTo: editView.topAnchor).isActive = true
        editImageView.leadingAnchor.constraint(equalTo: editView.leadingAnchor).isActive = true
        editImageView.widthAnchor.constraint(equalToConstant: .sectionImageWidth).isActive = true
        editImageView.heightAnchor.constraint(equalToConstant: .sectionImageHeight).isActive = true

        editTitleLabel.topAnchor.constraint(equalTo: editView.topAnchor).isActive = true
        editTitleLabel.leadingAnchor.constraint(equalTo: editImageView.trailingAnchor, constant: .sectionHorizontal).isActive = true
        editTitleLabel.trailingAnchor.constraint(equalTo: editView.trailingAnchor).isActive = true

        editSummaryLabel.topAnchor.constraint(equalTo: editTitleLabel.bottomAnchor, constant: .sectionVertical).isActive = true
        editSummaryLabel.leadingAnchor.constraint(equalTo: editTitleLabel.leadingAnchor).isActive = true
        editSummaryLabel.trailingAnchor.constraint(equalTo: editTitleLabel.trailingAnchor).isActive = true
        editSummaryLabel.bottomAnchor.constraint(equalTo: editView.bottomAnchor).isActive = true

        // MARK: Note to Self Constraints
        noteToSelfView.topAnchor.constraint(equalTo: editView.bottomAnchor, constant: .vertical).isActive = true
        noteToSelfView.leadingAnchor.constraint(equalTo: editView.leadingAnchor).isActive = true
        noteToSelfView.trailingAnchor.constraint(equalTo: editView.trailingAnchor).isActive = true

        noteToSelfImageView.topAnchor.constraint(equalTo: noteToSelfView.topAnchor).isActive = true
        noteToSelfImageView.leadingAnchor.constraint(equalTo: noteToSelfView.leadingAnchor).isActive = true
        noteToSelfImageView.widthAnchor.constraint(equalToConstant: .sectionImageWidth).isActive = true
        noteToSelfImageView.heightAnchor.constraint(equalToConstant: .sectionImageHeight).isActive = true

        noteToSelfTitleLabel.topAnchor.constraint(equalTo: noteToSelfView.topAnchor).isActive = true
        noteToSelfTitleLabel.leadingAnchor.constraint(equalTo: noteToSelfImageView.trailingAnchor, constant: .sectionHorizontal).isActive = true
        noteToSelfTitleLabel.trailingAnchor.constraint(equalTo: noteToSelfView.trailingAnchor).isActive = true

        noteToSelfSummaryLabel.topAnchor.constraint(equalTo: noteToSelfTitleLabel.bottomAnchor, constant: .sectionVertical).isActive = true
        noteToSelfSummaryLabel.leadingAnchor.constraint(equalTo: noteToSelfTitleLabel.leadingAnchor).isActive = true
        noteToSelfSummaryLabel.trailingAnchor.constraint(equalTo: noteToSelfTitleLabel.trailingAnchor).isActive = true
        noteToSelfSummaryLabel.bottomAnchor.constraint(equalTo: noteToSelfView.bottomAnchor).isActive = true

        // MARK: Sketch your thoughts Constraints
        sketchView.topAnchor.constraint(equalTo: noteToSelfView.bottomAnchor, constant: .vertical).isActive = true
        sketchView.leadingAnchor.constraint(equalTo: noteToSelfView.leadingAnchor).isActive = true
        sketchView.trailingAnchor.constraint(equalTo: noteToSelfView.trailingAnchor).isActive = true

        sketchImageView.topAnchor.constraint(equalTo: sketchView.topAnchor).isActive = true
        sketchImageView.leadingAnchor.constraint(equalTo: sketchView.leadingAnchor).isActive = true
        sketchImageView.widthAnchor.constraint(equalToConstant: .sectionImageWidth).isActive = true
        sketchImageView.heightAnchor.constraint(equalToConstant: .sectionImageHeight).isActive = true

        sketchTitleLabel.topAnchor.constraint(equalTo: sketchView.topAnchor).isActive = true
        sketchTitleLabel.leadingAnchor.constraint(equalTo: sketchImageView.trailingAnchor, constant: .sectionHorizontal).isActive = true
        sketchTitleLabel.trailingAnchor.constraint(equalTo: sketchView.trailingAnchor).isActive = true

        sketchSummaryLabel.topAnchor.constraint(equalTo: sketchTitleLabel.bottomAnchor, constant: .sectionVertical).isActive = true
        sketchSummaryLabel.leadingAnchor.constraint(equalTo: sketchTitleLabel.leadingAnchor).isActive = true
        sketchSummaryLabel.trailingAnchor.constraint(equalTo: sketchTitleLabel.trailingAnchor).isActive = true
        sketchSummaryLabel.bottomAnchor.constraint(equalTo: sketchView.bottomAnchor).isActive = true

        continueButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: .buttonVertical).isActive = true
        continueButton.leadingAnchor.constraint(equalTo: sketchView.leadingAnchor).isActive = true
        continueButton.trailingAnchor.constraint(equalTo: sketchView.trailingAnchor).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: .buttonHeight).isActive = true
    }
    
    func setupExtraConfigurations() {
        backgroundColor = .white
    }
    
}

#if DEBUG && canImport(SwiftUI)
import SwiftUI

extension WelcomeViewController: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = WelcomeViewController

    func makeUIViewController(context: UIViewControllerRepresentableContext<WelcomeViewController>) -> WelcomeViewController {
        WelcomeViewController()
    }

    func updateUIViewController(_ uiViewController: WelcomeViewController, context: UIViewControllerRepresentableContext<WelcomeViewController>) { }
    
}

@available(iOS 13, *)
struct WelcomeViewController_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            WelcomeViewController()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
                .previewDisplayName("iPhone 11 Pro Max")
            
            WelcomeViewController()
                .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                .previewDisplayName("iPhone 8")
        }
    }
    
}
#endif
