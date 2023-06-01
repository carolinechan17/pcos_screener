//
// PCOSDetector.swift
//
// This file was automatically generated and should not be edited.
//

import CoreML


/// Model Prediction Input Type
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
public class PCOSDetectorInput : MLFeatureProvider {

    /// Age (yrs) as double value
    public var Age__yrs_: Double

    /// Weight (Kg) as double value
    public var Weight__Kg_: Double

    /// Height(Cm) as double value
    public var Height_Cm_: Double

    /// Cycle length(days) as double value
    public var Cycle_length_days_: Double

    /// Weight gain(Y/N) as double value
    public var Weight_gain_Y_N_: Double

    /// hair growth(Y/N) as double value
    public var hair_growth_Y_N_: Double

    /// Skin darkening (Y/N) as double value
    public var Skin_darkening__Y_N_: Double

    /// Hair loss(Y/N) as double value
    public var Hair_loss_Y_N_: Double

    /// Pimples(Y/N) as double value
    public var Pimples_Y_N_: Double

    public var featureNames: Set<String> {
        get {
            return ["Age (yrs)", "Weight (Kg)", "Height(Cm)", "Cycle length(days)", "Weight gain(Y/N)", "hair growth(Y/N)", "Skin darkening (Y/N)", "Hair loss(Y/N)", "Pimples(Y/N)"]
        }
    }
    
    public func featureValue(for featureName: String) -> MLFeatureValue? {
        if (featureName == "Age (yrs)") {
            return MLFeatureValue(double: Age__yrs_)
        }
        if (featureName == "Weight (Kg)") {
            return MLFeatureValue(double: Weight__Kg_)
        }
        if (featureName == "Height(Cm)") {
            return MLFeatureValue(double: Height_Cm_)
        }
        if (featureName == "Cycle length(days)") {
            return MLFeatureValue(double: Cycle_length_days_)
        }
        if (featureName == "Weight gain(Y/N)") {
            return MLFeatureValue(double: Weight_gain_Y_N_)
        }
        if (featureName == "hair growth(Y/N)") {
            return MLFeatureValue(double: hair_growth_Y_N_)
        }
        if (featureName == "Skin darkening (Y/N)") {
            return MLFeatureValue(double: Skin_darkening__Y_N_)
        }
        if (featureName == "Hair loss(Y/N)") {
            return MLFeatureValue(double: Hair_loss_Y_N_)
        }
        if (featureName == "Pimples(Y/N)") {
            return MLFeatureValue(double: Pimples_Y_N_)
        }
        return nil
    }
    
    init(Age__yrs_: Double, Weight__Kg_: Double, Height_Cm_: Double, Cycle_length_days_: Double, Weight_gain_Y_N_: Double, hair_growth_Y_N_: Double, Skin_darkening__Y_N_: Double, Hair_loss_Y_N_: Double, Pimples_Y_N_: Double) {
        self.Age__yrs_ = Age__yrs_
        self.Weight__Kg_ = Weight__Kg_
        self.Height_Cm_ = Height_Cm_
        self.Cycle_length_days_ = Cycle_length_days_
        self.Weight_gain_Y_N_ = Weight_gain_Y_N_
        self.hair_growth_Y_N_ = hair_growth_Y_N_
        self.Skin_darkening__Y_N_ = Skin_darkening__Y_N_
        self.Hair_loss_Y_N_ = Hair_loss_Y_N_
        self.Pimples_Y_N_ = Pimples_Y_N_
    }

}


/// Model Prediction Output Type
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
public class PCOSDetectorOutput : MLFeatureProvider {

    /// Source provided by CoreML
    private let provider : MLFeatureProvider

    /// PCOS (Y/N) as integer value
    public var PCOS__Y_N_: Int64 {
        return self.provider.featureValue(for: "PCOS (Y/N)")!.int64Value
    }

    /// PCOS (Y/N)Probability as dictionary of 64-bit integers to doubles
    public var PCOS__Y_N_Probability: [Int64 : Double] {
        return self.provider.featureValue(for: "PCOS (Y/N)Probability")!.dictionaryValue as! [Int64 : Double]
    }

    public var featureNames: Set<String> {
        return self.provider.featureNames
    }
    
    public func featureValue(for featureName: String) -> MLFeatureValue? {
        return self.provider.featureValue(for: featureName)
    }

    init(PCOS__Y_N_: Int64, PCOS__Y_N_Probability: [Int64 : Double]) {
        self.provider = try! MLDictionaryFeatureProvider(dictionary: ["PCOS (Y/N)" : MLFeatureValue(int64: PCOS__Y_N_), "PCOS (Y/N)Probability" : MLFeatureValue(dictionary: PCOS__Y_N_Probability as [AnyHashable : NSNumber])])
    }

    init(features: MLFeatureProvider) {
        self.provider = features
    }
}


/// Class for model loading and prediction
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
public class PCOSDetector {
    let model: MLModel

    /// URL of model assuming it was installed in the same bundle as this class
//    public class var urlOfModelInThisBundle : URL {
//        let bundle = Bundle(for: self)
//        return bundle.url(forResource: "PCOSDetector", withExtension:"mlmodelc")!
//    }
    
    public class var urlOfModelInThisBundle : URL {
        let resPath = Bundle(for: self).url(forResource: "PCOSDetector", withExtension: "mlmodel")!
        return try! MLModel.compileModel(at: resPath)
    }

    /**
        Construct PCOSDetector instance with an existing MLModel object.

        Usually the application does not use this initializer unless it makes a subclass of PCOSDetector.
        Such application may want to use `MLModel(contentsOfURL:configuration:)` and `PCOSDetector.urlOfModelInThisBundle` to create a MLModel object to pass-in.

        - parameters:
          - model: MLModel object
    */
    init(model: MLModel) {
        self.model = model
    }

    /**
        Construct PCOSDetector instance by automatically loading the model from the app's bundle.
    */
    @available(*, deprecated, message: "Use init(configuration:) instead and handle errors appropriately.")
    convenience init() {
        try! self.init(contentsOf: type(of:self).urlOfModelInThisBundle)
    }

    /**
        Construct a model with configuration

        - parameters:
           - configuration: the desired model configuration

        - throws: an NSError object that describes the problem
    */
    @available(macOS 10.14, iOS 12.0, tvOS 12.0, watchOS 5.0, *)
    convenience init(configuration: MLModelConfiguration) throws {
        try self.init(contentsOf: type(of:self).urlOfModelInThisBundle, configuration: configuration)
    }

    /**
        Construct PCOSDetector instance with explicit path to mlmodelc file
        - parameters:
           - modelURL: the file url of the model

        - throws: an NSError object that describes the problem
    */
    convenience init(contentsOf modelURL: URL) throws {
        try self.init(model: MLModel(contentsOf: modelURL))
    }

    /**
        Construct a model with URL of the .mlmodelc directory and configuration

        - parameters:
           - modelURL: the file url of the model
           - configuration: the desired model configuration

        - throws: an NSError object that describes the problem
    */
    @available(macOS 10.14, iOS 12.0, tvOS 12.0, watchOS 5.0, *)
    convenience init(contentsOf modelURL: URL, configuration: MLModelConfiguration) throws {
        try self.init(model: MLModel(contentsOf: modelURL, configuration: configuration))
    }

    /**
        Construct PCOSDetector instance asynchronously with optional configuration.

        Model loading may take time when the model content is not immediately available (e.g. encrypted model). Use this factory method especially when the caller is on the main thread.

        - parameters:
          - configuration: the desired model configuration
          - handler: the completion handler to be called when the model loading completes successfully or unsuccessfully
    */
    @available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
    class func load(configuration: MLModelConfiguration = MLModelConfiguration(), completionHandler handler: @escaping (Swift.Result<PCOSDetector, Error>) -> Void) {
        return self.load(contentsOf: self.urlOfModelInThisBundle, configuration: configuration, completionHandler: handler)
    }

    /**
        Construct PCOSDetector instance asynchronously with optional configuration.

        Model loading may take time when the model content is not immediately available (e.g. encrypted model). Use this factory method especially when the caller is on the main thread.

        - parameters:
          - configuration: the desired model configuration
    */
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    class func load(configuration: MLModelConfiguration = MLModelConfiguration()) async throws -> PCOSDetector {
        return try await self.load(contentsOf: self.urlOfModelInThisBundle, configuration: configuration)
    }

    /**
        Construct PCOSDetector instance asynchronously with URL of the .mlmodelc directory with optional configuration.

        Model loading may take time when the model content is not immediately available (e.g. encrypted model). Use this factory method especially when the caller is on the main thread.

        - parameters:
          - modelURL: the URL to the model
          - configuration: the desired model configuration
          - handler: the completion handler to be called when the model loading completes successfully or unsuccessfully
    */
    @available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
    class func load(contentsOf modelURL: URL, configuration: MLModelConfiguration = MLModelConfiguration(), completionHandler handler: @escaping (Swift.Result<PCOSDetector, Error>) -> Void) {
        MLModel.load(contentsOf: modelURL, configuration: configuration) { result in
            switch result {
            case .failure(let error):
                handler(.failure(error))
            case .success(let model):
                handler(.success(PCOSDetector(model: model)))
            }
        }
    }

    /**
        Construct PCOSDetector instance asynchronously with URL of the .mlmodelc directory with optional configuration.

        Model loading may take time when the model content is not immediately available (e.g. encrypted model). Use this factory method especially when the caller is on the main thread.

        - parameters:
          - modelURL: the URL to the model
          - configuration: the desired model configuration
    */
    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    class func load(contentsOf modelURL: URL, configuration: MLModelConfiguration = MLModelConfiguration()) async throws -> PCOSDetector {
        let model = try await MLModel.load(contentsOf: modelURL, configuration: configuration)
        return PCOSDetector(model: model)
    }

    /**
        Make a prediction using the structured interface

        - parameters:
           - input: the input to the prediction as PCOSDetectorInput

        - throws: an NSError object that describes the problem

        - returns: the result of the prediction as PCOSDetectorOutput
    */
    func prediction(input: PCOSDetectorInput) throws -> PCOSDetectorOutput {
        return try self.prediction(input: input, options: MLPredictionOptions())
    }

    /**
        Make a prediction using the structured interface

        - parameters:
           - input: the input to the prediction as PCOSDetectorInput
           - options: prediction options 

        - throws: an NSError object that describes the problem

        - returns: the result of the prediction as PCOSDetectorOutput
    */
    func prediction(input: PCOSDetectorInput, options: MLPredictionOptions) throws -> PCOSDetectorOutput {
        let outFeatures = try model.prediction(from: input, options:options)
        return PCOSDetectorOutput(features: outFeatures)
    }

    /**
        Make a prediction using the convenience interface

        - parameters:
            - Age__yrs_ as double value
            - Weight__Kg_ as double value
            - Height_Cm_ as double value
            - Cycle_length_days_ as double value
            - Weight_gain_Y_N_ as double value
            - hair_growth_Y_N_ as double value
            - Skin_darkening__Y_N_ as double value
            - Hair_loss_Y_N_ as double value
            - Pimples_Y_N_ as double value

        - throws: an NSError object that describes the problem

        - returns: the result of the prediction as PCOSDetectorOutput
    */
    func prediction(Age__yrs_: Double, Weight__Kg_: Double, Height_Cm_: Double, Cycle_length_days_: Double, Weight_gain_Y_N_: Double, hair_growth_Y_N_: Double, Skin_darkening__Y_N_: Double, Hair_loss_Y_N_: Double, Pimples_Y_N_: Double) throws -> PCOSDetectorOutput {
        let input_ = PCOSDetectorInput(Age__yrs_: Age__yrs_, Weight__Kg_: Weight__Kg_, Height_Cm_: Height_Cm_, Cycle_length_days_: Cycle_length_days_, Weight_gain_Y_N_: Weight_gain_Y_N_, hair_growth_Y_N_: hair_growth_Y_N_, Skin_darkening__Y_N_: Skin_darkening__Y_N_, Hair_loss_Y_N_: Hair_loss_Y_N_, Pimples_Y_N_: Pimples_Y_N_)
        return try self.prediction(input: input_)
    }

    /**
        Make a batch prediction using the structured interface

        - parameters:
           - inputs: the inputs to the prediction as [PCOSDetectorInput]
           - options: prediction options 

        - throws: an NSError object that describes the problem

        - returns: the result of the prediction as [PCOSDetectorOutput]
    */
    @available(macOS 10.14, iOS 12.0, tvOS 12.0, watchOS 5.0, *)
    func predictions(inputs: [PCOSDetectorInput], options: MLPredictionOptions = MLPredictionOptions()) throws -> [PCOSDetectorOutput] {
        let batchIn = MLArrayBatchProvider(array: inputs)
        let batchOut = try model.predictions(from: batchIn, options: options)
        var results : [PCOSDetectorOutput] = []
        results.reserveCapacity(inputs.count)
        for i in 0..<batchOut.count {
            let outProvider = batchOut.features(at: i)
            let result =  PCOSDetectorOutput(features: outProvider)
            results.append(result)
        }
        return results
    }
}
