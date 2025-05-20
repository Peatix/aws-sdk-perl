
package Paws::S3Outposts::ListOutpostsWithS3;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOutpostsWithS3');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/S3Outposts/ListOutpostsWithS3');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Outposts::ListOutpostsWithS3Result');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Outposts::ListOutpostsWithS3 - Arguments for method ListOutpostsWithS3 on L<Paws::S3Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOutpostsWithS3 on the
L<Amazon S3 on Outposts|Paws::S3Outposts> service. Use the attributes of this class
as arguments to method ListOutpostsWithS3.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOutpostsWithS3.

=head1 SYNOPSIS

    my $s3-outposts = Paws->service('S3Outposts');
    my $ListOutpostsWithS3Result = $s3 -outposts->ListOutpostsWithS3(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListOutpostsWithS3Result->NextToken;
    my $Outposts  = $ListOutpostsWithS3Result->Outposts;

    # Returns a L<Paws::S3Outposts::ListOutpostsWithS3Result> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-outposts/ListOutpostsWithS3>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of Outposts to return. The limit is 100.



=head2 NextToken => Str

When you can get additional results from the C<ListOutpostsWithS3>
call, a C<NextToken> parameter is returned in the output. You can then
pass in a subsequent command to the C<NextToken> parameter to continue
listing additional Outposts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOutpostsWithS3 in L<Paws::S3Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

