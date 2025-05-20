
package Paws::Macie2::UpdateResourceProfile;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceArn', required => 1);
  has SensitivityScoreOverride => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'sensitivityScoreOverride');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResourceProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resource-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::UpdateResourceProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::UpdateResourceProfile - Arguments for method UpdateResourceProfile on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResourceProfile on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method UpdateResourceProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResourceProfile.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $UpdateResourceProfileResponse = $macie2->UpdateResourceProfile(
      ResourceArn              => 'My__string',
      SensitivityScoreOverride => 1,              # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/UpdateResourceProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the S3 bucket that the request
applies to.



=head2 SensitivityScoreOverride => Int

The new sensitivity score for the bucket. Valid values are: 100, assign
the maximum score and apply the I<Sensitive> label to the bucket; and,
null (empty), assign a score that Amazon Macie calculates automatically
after you submit the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResourceProfile in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

