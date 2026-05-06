package Paws::FreeTier;
  use Moose;
  sub service { 'freetier' }
  sub signing_name { 'freetier' }
  sub version { '2023-09-07' }
  sub target_prefix { 'AWSFreeTierService' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub GetFreeTierUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FreeTier::GetFreeTierUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllFreeTierUsage {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetFreeTierUsage(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetFreeTierUsage(@_, nextToken => $next_result->nextToken);
        push @{ $result->freeTierUsages }, @{ $next_result->freeTierUsages };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'freeTierUsages') foreach (@{ $result->freeTierUsages });
        $result = $self->GetFreeTierUsage(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'freeTierUsages') foreach (@{ $result->freeTierUsages });
    }

    return undef
  }


  sub operations { qw/GetFreeTierUsage / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::FreeTier - Perl Interface to AWS AWS Free Tier

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('FreeTier');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

You can use the Amazon Web Services Free Tier API to query
programmatically your Free Tier usage data.

Free Tier tracks your monthly usage data for all free tier offers that
are associated with your Amazon Web Services account. You can use the
Free Tier API to filter and show only the data that you want.

Service endpoint

The Free Tier API provides the following endpoint:

=over

=item *

https://freetier.us-east-1.api.aws

=back

For more information, see Using the Amazon Web Services Free Tier
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-free-tier.html)
in the I<Billing User Guide>.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 GetFreeTierUsage

=over

=item [Filter => L<Paws::FreeTier::Expression>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FreeTier::GetFreeTierUsage>

Returns: a L<Paws::FreeTier::GetFreeTierUsageResponse> instance

Returns a list of all Free Tier usage objects that match your filters.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllFreeTierUsage(sub { },[Filter => L<Paws::FreeTier::Expression>, MaxResults => Int, NextToken => Str])

=head2 GetAllFreeTierUsage([Filter => L<Paws::FreeTier::Expression>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - freeTierUsages, passing the object as the first parameter, and the string 'freeTierUsages' as the second parameter 

If not, it will return a a L<Paws::FreeTier::GetFreeTierUsageResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

