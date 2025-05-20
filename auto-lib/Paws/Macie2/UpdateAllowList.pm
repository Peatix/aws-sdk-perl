
package Paws::Macie2::UpdateAllowList;
  use Moose;
  has Criteria => (is => 'ro', isa => 'Paws::Macie2::AllowListCriteria', traits => ['NameInRequest'], request_name => 'criteria', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAllowList');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/allow-lists/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::UpdateAllowListResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::UpdateAllowList - Arguments for method UpdateAllowList on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAllowList on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method UpdateAllowList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAllowList.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $UpdateAllowListResponse = $macie2->UpdateAllowList(
      Criteria => {
        Regex => 'My__stringMin1Max512PatternSS',   # min: 1, max: 512; OPTIONAL
        S3WordsList => {
          BucketName =>
            'My__stringMin3Max255PatternAZaZ093255',    # min: 3, max: 255
          ObjectKey => 'My__stringMin1Max1024PatternSS',    # min: 1, max: 1024

        },    # OPTIONAL
      },
      Id          => 'My__string',
      Name        => 'My__stringMin1Max128Pattern',
      Description => 'My__stringMin1Max512PatternSS',    # OPTIONAL
    );

    # Results:
    my $Arn = $UpdateAllowListResponse->Arn;
    my $Id  = $UpdateAllowListResponse->Id;

    # Returns a L<Paws::Macie2::UpdateAllowListResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/UpdateAllowList>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Criteria => L<Paws::Macie2::AllowListCriteria>

The criteria that specify the text or text pattern to ignore. The
criteria can be the location and name of an S3 object that lists
specific text to ignore (s3WordsList), or a regular expression that
defines a text pattern to ignore (regex).

You can change a list's underlying criteria, such as the name of the S3
object or the regular expression to use. However, you can't change the
type from s3WordsList to regex or the other way around.



=head2 Description => Str

A custom description of the allow list. The description can contain as
many as 512 characters.



=head2 B<REQUIRED> Id => Str

The unique identifier for the Amazon Macie resource that the request
applies to.



=head2 B<REQUIRED> Name => Str

A custom name for the allow list. The name can contain as many as 128
characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAllowList in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

