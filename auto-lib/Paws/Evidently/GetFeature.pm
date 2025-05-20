
package Paws::Evidently::GetFeature;
  use Moose;
  has Feature => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'feature', required => 1);
  has Project => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'project', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFeature');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{project}/features/{feature}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::GetFeatureResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::GetFeature - Arguments for method GetFeature on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFeature on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method GetFeature.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFeature.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $GetFeatureResponse = $evidently->GetFeature(
      Feature => 'MyFeatureName',
      Project => 'MyProjectRef',

    );

    # Results:
    my $Feature = $GetFeatureResponse->Feature;

    # Returns a L<Paws::Evidently::GetFeatureResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/GetFeature>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Feature => Str

The name of the feature that you want to retrieve information for.



=head2 B<REQUIRED> Project => Str

The name or ARN of the project that contains the feature.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFeature in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

