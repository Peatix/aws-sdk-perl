
package Paws::Glue::PutDataQualityProfileAnnotation;
  use Moose;
  has InclusionAnnotation => (is => 'ro', isa => 'Str', required => 1);
  has ProfileId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDataQualityProfileAnnotation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::PutDataQualityProfileAnnotationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::PutDataQualityProfileAnnotation - Arguments for method PutDataQualityProfileAnnotation on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDataQualityProfileAnnotation on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method PutDataQualityProfileAnnotation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDataQualityProfileAnnotation.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $PutDataQualityProfileAnnotationResponse =
      $glue->PutDataQualityProfileAnnotation(
      InclusionAnnotation => 'INCLUDE',
      ProfileId           => 'MyHashString',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/PutDataQualityProfileAnnotation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InclusionAnnotation => Str

The inclusion annotation value to apply to the profile.

Valid values are: C<"INCLUDE">, C<"EXCLUDE">

=head2 B<REQUIRED> ProfileId => Str

The ID of the data quality monitoring profile to annotate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDataQualityProfileAnnotation in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

