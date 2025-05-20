
package Paws::Evidently::DeleteFeature;
  use Moose;
  has Feature => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'feature', required => 1);
  has Project => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'project', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFeature');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{project}/features/{feature}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::DeleteFeatureResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::DeleteFeature - Arguments for method DeleteFeature on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFeature on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method DeleteFeature.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFeature.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $DeleteFeatureResponse = $evidently->DeleteFeature(
      Feature => 'MyFeatureName',
      Project => 'MyProjectRef',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/DeleteFeature>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Feature => Str

The name of the feature to delete.



=head2 B<REQUIRED> Project => Str

The name or ARN of the project that contains the feature to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFeature in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

