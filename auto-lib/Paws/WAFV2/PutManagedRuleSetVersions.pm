
package Paws::WAFV2::PutManagedRuleSetVersions;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LockToken => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RecommendedVersion => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'Str', required => 1);
  has VersionsToPublish => (is => 'ro', isa => 'Paws::WAFV2::VersionsToPublish');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutManagedRuleSetVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::PutManagedRuleSetVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::PutManagedRuleSetVersions - Arguments for method PutManagedRuleSetVersions on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutManagedRuleSetVersions on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method PutManagedRuleSetVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutManagedRuleSetVersions.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $PutManagedRuleSetVersionsResponse = $wafv2->PutManagedRuleSetVersions(
      Id                 => 'MyEntityId',
      LockToken          => 'MyLockToken',
      Name               => 'MyEntityName',
      Scope              => 'CLOUDFRONT',
      RecommendedVersion => 'MyVersionKeyString',    # OPTIONAL
      VersionsToPublish  => {
        'MyVersionKeyString' => {
          AssociatedRuleGroupArn =>
            'MyResourceArn',    # min: 20, max: 2048; OPTIONAL
          ForecastedLifetime => 1,    # min: 1; OPTIONAL
        },    # key: min: 1, max: 64
      },    # OPTIONAL
    );

    # Results:
    my $NextLockToken = $PutManagedRuleSetVersionsResponse->NextLockToken;

    # Returns a L<Paws::WAFV2::PutManagedRuleSetVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/PutManagedRuleSetVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

A unique identifier for the managed rule set. The ID is returned in the
responses to commands like C<list>. You provide it to operations like
C<get> and C<update>.



=head2 B<REQUIRED> LockToken => Str

A token used for optimistic locking. WAF returns a token to your C<get>
and C<list> requests, to mark the state of the entity at the time of
the request. To make changes to the entity associated with the token,
you provide the token to operations like C<update> and C<delete>. WAF
uses the token to ensure that no changes have been made to the entity
since you last retrieved it. If a change has been made, the update
fails with a C<WAFOptimisticLockException>. If this happens, perform
another C<get>, and use the new token returned by that operation.



=head2 B<REQUIRED> Name => Str

The name of the managed rule set. You use this, along with the rule set
ID, to identify the rule set.

This name is assigned to the corresponding managed rule group, which
your customers can access and use.



=head2 RecommendedVersion => Str

The version of the named managed rule group that you'd like your
customers to choose, from among your version offerings.



=head2 B<REQUIRED> Scope => Str

Specifies whether this is for a global resource type, such as a Amazon
CloudFront distribution. For an Amplify application, use C<CLOUDFRONT>.

To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:

=over

=item *

CLI - Specify the Region when you use the CloudFront scope:
C<--scope=CLOUDFRONT --region=us-east-1>.

=item *

API and SDKs - For all calls, use the Region endpoint us-east-1.

=back


Valid values are: C<"CLOUDFRONT">, C<"REGIONAL">

=head2 VersionsToPublish => L<Paws::WAFV2::VersionsToPublish>

The versions of the named managed rule group that you want to offer to
your customers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutManagedRuleSetVersions in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

