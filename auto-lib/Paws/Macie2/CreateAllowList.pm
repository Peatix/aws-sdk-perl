
package Paws::Macie2::CreateAllowList;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has Criteria => (is => 'ro', isa => 'Paws::Macie2::AllowListCriteria', traits => ['NameInRequest'], request_name => 'criteria', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Macie2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAllowList');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/allow-lists');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::CreateAllowListResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::CreateAllowList - Arguments for method CreateAllowList on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAllowList on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method CreateAllowList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAllowList.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $CreateAllowListResponse = $macie2->CreateAllowList(
      ClientToken => 'My__string',
      Criteria    => {
        Regex => 'My__stringMin1Max512PatternSS',   # min: 1, max: 512; OPTIONAL
        S3WordsList => {
          BucketName =>
            'My__stringMin3Max255PatternAZaZ093255',    # min: 3, max: 255
          ObjectKey => 'My__stringMin1Max1024PatternSS',    # min: 1, max: 1024

        },    # OPTIONAL
      },
      Name        => 'My__stringMin1Max128Pattern',
      Description => 'My__stringMin1Max512PatternSS',      # OPTIONAL
      Tags        => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateAllowListResponse->Arn;
    my $Id  = $CreateAllowListResponse->Id;

    # Returns a L<Paws::Macie2::CreateAllowListResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/CreateAllowList>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique, case-sensitive token that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> Criteria => L<Paws::Macie2::AllowListCriteria>

The criteria that specify the text or text pattern to ignore. The
criteria can be the location and name of an S3 object that lists
specific text to ignore (s3WordsList), or a regular expression (regex)
that defines a text pattern to ignore.



=head2 Description => Str

A custom description of the allow list. The description can contain as
many as 512 characters.



=head2 B<REQUIRED> Name => Str

A custom name for the allow list. The name can contain as many as 128
characters.



=head2 Tags => L<Paws::Macie2::TagMap>

A map of key-value pairs that specifies the tags to associate with the
allow list.

An allow list can have a maximum of 50 tags. Each tag consists of a tag
key and an associated tag value. The maximum length of a tag key is 128
characters. The maximum length of a tag value is 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAllowList in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

