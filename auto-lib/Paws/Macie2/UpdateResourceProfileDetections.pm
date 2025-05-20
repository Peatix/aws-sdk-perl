
package Paws::Macie2::UpdateResourceProfileDetections;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceArn', required => 1);
  has SuppressDataIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::SuppressDataIdentifier]', traits => ['NameInRequest'], request_name => 'suppressDataIdentifiers');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResourceProfileDetections');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resource-profiles/detections');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::UpdateResourceProfileDetectionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::UpdateResourceProfileDetections - Arguments for method UpdateResourceProfileDetections on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResourceProfileDetections on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method UpdateResourceProfileDetections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResourceProfileDetections.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $UpdateResourceProfileDetectionsResponse =
      $macie2->UpdateResourceProfileDetections(
      ResourceArn             => 'My__string',
      SuppressDataIdentifiers => [
        {
          Id   => 'My__string',
          Type => 'CUSTOM',       # values: CUSTOM, MANAGED; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/UpdateResourceProfileDetections>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the S3 bucket that the request
applies to.



=head2 SuppressDataIdentifiers => ArrayRef[L<Paws::Macie2::SuppressDataIdentifier>]

An array of objects, one for each custom data identifier or managed
data identifier that detected a type of sensitive data to exclude from
the bucket's score. To include all sensitive data types in the score,
don't specify any values for this array.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResourceProfileDetections in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

